.class public final Ly2/s;
.super Ly2/z;
.source "ISBNResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j(Lx2/b;)Ly2/u;
    .locals 0

    invoke-virtual {p0, p1}, Ly2/s;->p(Lx2/b;)Ly2/r;

    move-result-object p0

    return-object p0
.end method

.method public p(Lx2/b;)Ly2/r;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lx2/b;->a()Lx2/a;

    move-result-object p0

    .line 2
    sget-object v0, Lx2/a;->l:Lx2/a;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Ly2/z;->c(Lx2/b;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    const-string p1, "978"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "979"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 6
    :cond_2
    new-instance p1, Ly2/r;

    invoke-direct {p1, p0}, Ly2/r;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
