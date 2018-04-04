package cn.smbms.tools;

import java.math.BigDecimal;

public class BigDecimalUtil {
	enum BigDecimalOperations {
		add, sub, mul, div
	}

	public BigDecimal OperationASMD(Object numOne, Object numTow,
			BigDecimalOperations operations, int scale, int roundingMode) {
		BigDecimal num1 = new BigDecimal(String.valueOf(numOne)).setScale(
				scale, roundingMode);
		BigDecimal num2 = new BigDecimal(String.valueOf(numTow)).setScale(
				scale, roundingMode);
		switch (operations) {
		case add:
			return num1.add(num2).setScale(scale, roundingMode);
		case sub:
			return num1.subtract(num2).setScale(scale, roundingMode);
		case mul:
			return num1.multiply(num2).setScale(scale, roundingMode);
		case div:
			return num1.divide(num2).setScale(scale, roundingMode);
		}
		return null;
	}
}
