# Stocks
Apply probabilistic neural networks for recognizing technical patterns in stock prices and
evaluates the performance of patterns as predictors of future price movements.
Keywords​ : R

We have delivered this work as a write up of an assignment for Modelisation and algo finance
subject.

The project consists of identifying technical patterns in stock prices
We used a cluster of 601 instances of normalized vectors composed of 20 daily stock prices to
set up a pattern.

We used 14 patterns: Ascending triangle, Descending triangle, Broadening top, Double bottom,
Double top, Down price channel, Cup and handle, Head and shoulders, Symmetric triangle
down, Symmetric triangle up, Triple bottom, Triple top, Failing wedge, Rising wedge.

We used neural network comprised of 5 layers:
1. Input layer
2. Normalization layer
3. Pattern layer
4. Summation layer
5. Output layer

Input layer​ : Consists of a vector of 20 daily stock prices.

Normalization layer​ : Consists of normalizing the vector in order to fit the patterns.

Pattern layer​ : Consists of calculating the euclidean distance between the input and a set of 601
vectors for each pattern (14 patterns), the result is 14 vectors each composed of 601 distances.

Summation layer​ : Consists of summing the distances resulted from the previous layer, for each
pattern (14 patterns), the result is a vector of 14 summations, 1 per pattern

Output layer​ : Consists of the minimum of the 14 components of the vector.

The input belongs to the pattern associated with the order of the result.
