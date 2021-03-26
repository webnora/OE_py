from scipy.stats import chi2_contingency
a,b,c,d = 193, 3166, 582, 9214
print((a*b-b*c)**2*(a+b+c+d)/((a+c)*(b+d)*(a+b)*(c+d)))
print(chi2_contingency([[193, 3166], [582, 9214]], False))
