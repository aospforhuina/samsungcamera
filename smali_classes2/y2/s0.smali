.class public final Ly2/s0;
.super Ly2/z;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j(Lx2/b;)Ly2/u;
    .locals 0

    invoke-virtual {p0, p1}, Ly2/s0;->p(Lx2/b;)Ly2/q0;

    move-result-object p0

    return-object p0
.end method

.method public p(Lx2/b;)Ly2/q0;
    .locals 13

    .line 1
    invoke-static {p1}, Ly2/z;->c(Lx2/b;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v10, Ly2/r0;->a:Ly2/r0;

    const-string p1, "WIFI:"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "I:"

    const-string v1, "H:"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3b

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "S:"

    .line 5
    invoke-static {v5, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "P:"

    .line 7
    invoke-static {v2, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    const-string v2, "T:"

    .line 8
    invoke-static {v2, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "nopass"

    .line 9
    :cond_1
    invoke-static {v1, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 10
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    const-string v0, "A:"

    .line 11
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    const-string v0, "E:"

    .line 12
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-static {v1, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v12, Ly2/q0;

    move-object v0, v12

    move-object v1, v2

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v11

    move-object v8, p1

    move-object v9, p0

    invoke-direct/range {v0 .. v10}, Ly2/q0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ly2/r0;)V

    return-object v12

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    const-string p1, "DPP:"

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    sget-object p1, Ly2/r0;->b:Ly2/r0;

    const/4 p1, 0x4

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "C:"

    .line 18
    invoke-static {v5, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    const-string v0, "M:"

    .line 20
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    const-string v0, "K:"

    .line 21
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 22
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "V:"

    .line 23
    invoke-static {v0, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-static {v1, p1, v4, v3}, Ly2/z;->g(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v10, Ly2/p0;

    move-object v0, v10

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    move-object v4, v8

    move-object v5, v9

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Ly2/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :cond_5
    :goto_1
    return-object v2
.end method
