#include <iostream>
#include "FIR.h"
#include <direct.h>

using namespace std;

#define NUM_SAMPLES			600

int main(int argc, char *argv[])
{
	FILE         *fp;

	int32_t signal;
	int32_t input[NUM_SAMPLES], output[NUM_SAMPLES];
	int32_t taps[N] = {0,-10,-9,23,56,63,56,23,-9,-10,0};

	const size_t size = 1024;
	char buffer[size];
	// Call _getcwd to get the current working directory and store it in buffer
	if (getcwd(buffer, size) != NULL) {
		// print the current working directory
		cout << "Current working directory: " << buffer << endl;
	}
	else {
		// If _getcwd returns NULL, print an error message
		cerr << "Error getting current working directory" << endl;
	}

	int i, ramp_up;

	cout << ">> Start test!" << endl;

	signal = 0;
	ramp_up = 1;

	fp = fopen("out.dat", "w");
	for (i = 0; i < NUM_SAMPLES; i++) {
		if (ramp_up == 1)
			signal = signal + 1;
		else
			signal = signal - 1;

		input[i] = signal;

		if ((ramp_up == 1) && (signal >= 75))
			ramp_up = 0;
		else if ((ramp_up == 0) && (signal <= -75))
			ramp_up = 1;
	}

	// Execute the function with latest input
	fir_n11_maxi(input, output, taps, NUM_SAMPLES * sizeof(int32_t));

	// Save the results.
	for (i = 0; i < NUM_SAMPLES; i++) {
		fprintf(fp,"%i %d %d\n", i, input[i], output[i]);
		//cout << "i:" << i << " input:" << input[i] << " output:" << output[i] << endl;
	}

	fclose(fp);

	cout << ">> Comparing against output data..." << endl;
	if (system("fc out.dat ..//..//..//..//hls_FIRN11MAXI/out_gold.dat")) {
		cout << ">> Test failed!" << endl;
		return 1;
	}

	cout << ">> Test passed!" << endl;
	cout << "------------------------" << endl;
	return 0;
}
