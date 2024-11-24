#include <math.h>
#include "dft.h"
#include "coefficients256.h"
#include "cstring"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE]) {
	int i, j, k, index;

    // Temporary arrays to hold the intermediate frequency domain results
    DTYPE temp_real_out[SIZE];
    DTYPE temp_imag_out[SIZE];

    memset(temp_real_out, 0, sizeof(DTYPE) * SIZE);
    memset(temp_imag_out, 0, sizeof(DTYPE) * SIZE);

    // Calculate each frequency domain sample iteratively
    L1: for (i = 0; i < SIZE * SIZE; ++i) {
#pragma HLS PIPELINE II=7

    	j = i / SIZE;
    	k = i % SIZE;
		index = (j * k) % SIZE;

		// Multiply the current phasor with the appropriate input sample and keep running sum
		temp_real_out[j] += real_sample[k] * cos_coefficients_table[index] - imag_sample[k] * sin_coefficients_table[index];
		temp_imag_out[j] += real_sample[k] * sin_coefficients_table[index] + imag_sample[k] * cos_coefficients_table[index];
    }
    memcpy(real_sample, temp_real_out, sizeof(DTYPE)*SIZE);
    memcpy(imag_sample, temp_imag_out, sizeof(DTYPE)*SIZE);
}
