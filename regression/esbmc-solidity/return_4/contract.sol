// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0;

// Ensure functions can return different type of signed integer values.
contract A {
	function int8_call() public pure returns (int8) {
		return 64;
	}
	function int16_call() public pure returns (int16) {
		return 16384;
	}
	function int24_call() public pure returns (int24) {
		return 4194304;
	}
	function int32_call() public pure returns (int32) {
		return 1073741824;
	}
	function int40_call() public pure returns (int40) {
		return 274877906944;
	}
	function int48_call() public pure returns (int48) {
		return 70368744177664;
	}
	function int56_call() public pure returns (int56) {
		return 18014398509481984;
	}
	function int64_call() public pure returns (int64) {
		return 4611686018427387904;
	}
	function int72_call() public pure returns (int72) {
		return 1180591620717411303424;
	}
	function int80_call() public pure returns (int80) {
		return 302231454903657293676544;
	}
	function int88_call() public pure returns (int88) {
		return 77371252455336267181195264;
	}
	function int96_call() public pure returns (int96) {
		return 19807040628566084398385987584;
	}
	function int104_call() public pure returns (int104) {
		return 5070602400912917605986812821504;
	}
	function int112_call() public pure returns (int112) {
		return 1298074214633706907132624082305024;
	}
	function int120_call() public pure returns (int120) {
		return 332306998946228968225951765070086144;
	}
	function int128_call() public pure returns (int128) {
		return 85070591730234615865843651857942052864;
	}
	function int136_call() public pure returns (int136) {
		return 21778071482940061661655974875633165533184;
	}
	function int144_call() public pure returns (int144) {
		return 5575186299632655785383929568162090376495104;
	}
	function int152_call() public pure returns (int152) {
		return 1427247692705959881058285969449495136382746624;
	}
	function int160_call() public pure returns (int160) {
		return 365375409332725729550921208179070754913983135744;
	}
	function int168_call() public pure returns (int168) {
		return 93536104789177786765035829293842113257979682750464;
	}
	function int176_call() public pure returns (int176) {
		return 23945242826029513411849172299223580994042798784118784;
	}
	function int184_call() public pure returns (int184) {
		return 6129982163463555433433388108601236734474956488734408704;
	}
	function int192_call() public pure returns (int192) {
		return 1569275433846670190958947355801916604025588861116008628224;
	}
	function int200_call() public pure returns (int200) {
		return 401734511064747568885490523085290650630550748445698208825344;
	}
	function int208_call() public pure returns (int208) {
		return 102844034832575377634685573909834406561420991602098741459288064;
	}
	function int216_call() public pure returns (int216) {
		return 26328072917139296674479506920917608079723773850137277813577744384;
	}
	function int224_call() public pure returns (int224) {
		return 6739986666787659948666753771754907668409286105635143120275902562304;
	}
	function int232_call() public pure returns (int232) {
		return 1725436586697640946858688965569256363112777243042596638790631055949824;
	}
	function int240_call() public pure returns (int240) {
		return 441711766194596082395824375185729628956870974218904739530401550323154944;
	}
	function int248_call() public pure returns (int248) {
		return 113078212145816597093331040047546785012958969400039613319782796882727665664;
	}
	function int256_call() public pure returns (int256) {
		return 28948022309329048855892746252171976963317496166410141009864396001978282409984;
	}
}

contract B {
	function test_return() public {
		A a = new A();
		assert(a.int8_call() == 64);
		assert(a.int16_call() == 16384);
		assert(a.int24_call() == 4194304);
		assert(a.int32_call() == 1073741824);
		assert(a.int40_call() == 274877906944);
		assert(a.int48_call() == 70368744177664);
		assert(a.int56_call() == 18014398509481984);
		assert(a.int64_call() == 4611686018427387904);
		assert(a.int72_call() == 1180591620717411303424);
		assert(a.int80_call() == 302231454903657293676544);
		assert(a.int88_call() == 77371252455336267181195264);
		assert(a.int96_call() == 19807040628566084398385987584);
		assert(a.int104_call() == 5070602400912917605986812821504);
		assert(a.int112_call() == 1298074214633706907132624082305024);
		assert(a.int120_call() == 332306998946228968225951765070086144);
		assert(a.int128_call() == 85070591730234615865843651857942052864);
		assert(a.int136_call() == 21778071482940061661655974875633165533184);
		assert(a.int144_call() == 5575186299632655785383929568162090376495104);
		assert(a.int152_call() == 1427247692705959881058285969449495136382746624);
		assert(a.int160_call() == 365375409332725729550921208179070754913983135744);
		assert(a.int168_call() == 93536104789177786765035829293842113257979682750464);
		assert(a.int176_call() == 23945242826029513411849172299223580994042798784118784);
		assert(a.int184_call() == 6129982163463555433433388108601236734474956488734408704);
		assert(a.int192_call() == 1569275433846670190958947355801916604025588861116008628224);
		assert(a.int200_call() == 401734511064747568885490523085290650630550748445698208825344);
		assert(a.int208_call() == 102844034832575377634685573909834406561420991602098741459288064);
		assert(a.int216_call() == 26328072917139296674479506920917608079723773850137277813577744384);
		assert(a.int224_call() == 6739986666787659948666753771754907668409286105635143120275902562304);
		assert(a.int232_call() == 1725436586697640946858688965569256363112777243042596638790631055949824);
		assert(a.int240_call() == 441711766194596082395824375185729628956870974218904739530401550323154944);
		assert(a.int248_call() == 113078212145816597093331040047546785012958969400039613319782796882727665664);
		assert(a.int256_call() == 28948022309329048855892746252171976963317496166410141009864396001978282409984);
	}
}