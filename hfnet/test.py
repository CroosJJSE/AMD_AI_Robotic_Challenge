# Define the variables for the EMI calculation
P = 50000  # loan amount
r_annual = 0.04  # annual interest rate
n_years = 25  # number of years

# Calculate the annual EMI
EMI_annual = P * r_annual * (1 + r_annual)**n_years / ((1 + r_annual)**n_years - 1)

# Calculate the quarterly EMI
r_quarterly = r_annual / 4
n_quarters = n_years * 4
EMI_quarterly = P * r_quarterly * (1 + r_quarterly)**n_quarters / ((1 + r_quarterly)**n_quarters - 1)

print(EMI_annual, EMI_quarterly)
