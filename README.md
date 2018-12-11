# SEBlockchain
Security Blockchain Module

## Security Virtual Machine Context
合约运行在一个安全的虚拟环境内，外部调用者只拥有授权的访问权限，对于禁止的权限，调用者无权使用。

## Contract Policy
每一个只能合约有一个Policy证书，每一个证书都必须经过合约的创建者签名；
记录合约的访问授权，其中包括合约的各项访问权限的具体条目，比如读取Storage、写Storage、修改状态、递归调用禁止、修改Policy证书等。

## Default Mode - Open Security Blockchain On
默认情况下开启安全模式

## Default Policy
官方提供默认Policy证书
