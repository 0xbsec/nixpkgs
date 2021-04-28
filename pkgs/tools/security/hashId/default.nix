{ lib
, buildPythonApplication
, fetchPypi
}:

buildPythonApplication rec {
  pname = "hashID";
  version = "3.1.4";

  src = fetchurl {
    url = "https://pypi.python.org/packages/source/h/${pname}/${pname}-${version}.zip";
    sha256 = "1iv3ylnli8b62m6jyh7w5qqlk926dnwprwcqcbykjlg99167z3xg";
  };

  doCheck = true;

  meta = with lib; {
    description = "Identify the different types of hashes used to encrypt data and especially passwords.";
    homepage = "https://psypanda.github.io/hashID/";
    license = with licenses; [ free ];
    maintainers = with maintainers; [ fab ];
  };
}
