# SEBlockchain
Security Blockchain Module

## 安全虚拟机上下文
合约运行在一个安全的虚拟环境内，外部调用者只拥有授权的访问权限，对于禁止的权限，调用者无权使用。

## 合约安全证书
每一个只能合约有一个Policy证书，每一个证书都必须经过合约的创建者签名；
记录合约的访问授权，其中包括合约的各项访问权限的具体条目，比如读取Storage、写Storage、内存容量限制、修改状态、递归调用禁止、修改Policy证书等。

## 默认模式
默认模式存在两种情况：宽泛授权（默认）和严格授权
如果用户不提供合约安全Policy证书，那么就采用宽泛的授权模式，如果用户提供了合约安全Policy证书，就严格按照Policy证书执行安全授权检查。

## 默认Policy
官方提供默认Policy证书。

## API安全接口
SEBlockchain提供针对每一安全授权项的API接口，用于用户进行动态安全授权。

    -- AddContextUser接口
    -- RemoveContextPermission接口

## 合约用户（User）
    用户划分如下
    合约普通用户: u = 0x2000
    合约创建者:  u = 0x1000
    合约拥有者:  u = 0x0000


