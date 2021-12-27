#Based off of https://stackoverflow.com/questions/29643352/converting-hex-to-rgb-value-in-python

async def hex_to_rgb(hexvalue):
    hexvalue = hexvalue.lstrip("-#")
    hexvalue = tuple(int(hexvalue[i:i+2], 16) for i in (0, 2, 4))
    return hexvalue
