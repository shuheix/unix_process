# FileDescriptorの制限を確認


p Process.getrlimit(:NOFILE)

# Output
# [1048576, 1048576]
# [soft limit, hard limit]
# ファイルディスクリプタが1048576を超えるとエラーが発生する

p Process::RLIM_INFINITY
# 18446744073709551615　理論上の最大値

# 他にもプロセスにはいろいろな制限がある

p Process.getrlimit(:NPROC)
# [256608, 256608] プロセスのユーザーが作成できるプロセスの数

p Process.getrlimit(:FSIZE)
# [18446744073709551615, 18446744073709551615]　プロセスが作成できるファイルのサイズの最大値

p Process.getrlimit(:STACK)
# [8388608, 18446744073709551615]　プロセスが使用できるスタックの最大サイズ

# 用途
