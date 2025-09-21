.class public final Lf/a;
.super Lf/b;
.source "AliasOptions.java"


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
.method protected e()I
    .locals 0

    const/16 p0, 0x1e00

    return p0
.end method

.method public h()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public j(Z)Lf/a;
    .locals 1

    const/16 v0, 0x1e00

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public k(Z)Lf/a;
    .locals 1

    const/16 v0, 0x600

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public l()Lf/c;
    .locals 1

    new-instance v0, Lf/c;

    invoke-virtual {p0}, Lf/b;->d()I

    move-result p0

    invoke-direct {v0, p0}, Lf/c;-><init>(I)V

    return-object v0
.end method
