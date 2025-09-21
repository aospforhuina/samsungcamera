.class public final Lf/c;
.super Lf/b;
.source "PropertyOptions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/b;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lf/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public A(Z)Lf/c;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public B(Z)Lf/c;
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public a(I)V
    .locals 1

    and-int/lit16 p0, p1, 0x100

    const/16 v0, 0x67

    if-lez p0, :cond_1

    and-int/lit16 p0, p1, 0x200

    if-gtz p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Lc/c;

    const-string p1, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {p0, p1, v0}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    and-int/lit8 p0, p1, 0x2

    if-lez p0, :cond_3

    and-int/lit16 p0, p1, 0x300

    if-gtz p0, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Lc/c;

    const-string p1, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {p0, p1, v0}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method protected e()I
    .locals 0

    const p0, -0x7fffe00e

    return p0
.end method

.method public h()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public l()Z
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 0

    invoke-virtual {p0}, Lf/b;->d()I

    move-result p0

    and-int/lit16 p0, p0, 0x300

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()Z
    .locals 0

    invoke-virtual {p0}, Lf/b;->d()I

    move-result p0

    and-int/lit16 p0, p0, -0x1e01

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public p()Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public q()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public s(Lf/c;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf/b;->d()I

    move-result v0

    invoke-virtual {p1}, Lf/b;->d()I

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lf/b;->g(I)V

    :cond_0
    return-void
.end method

.method public t(Z)Lf/c;
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public u(Z)Lf/c;
    .locals 1

    const/16 v0, 0x800

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public v(Z)Lf/c;
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public w(Z)Lf/c;
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public x(Z)Lf/c;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public y(Z)Lf/c;
    .locals 1

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public z(Z)Lf/c;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method
