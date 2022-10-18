kata = (0, 4, 132.42222, 10000, 12345.67)

# .2f, format float, 2 decimals ; .2e, scientific notation, 2 decimals
print(f"module_{kata[0]:02d}, ",
      f"ex_{kata[1]:02d} : {kata[2]:.2f}, {kata[3]:.2e}, {kata[4]:.2e}")
