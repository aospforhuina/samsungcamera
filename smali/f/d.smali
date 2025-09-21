.class public final Lf/d;
.super Lf/b;
.source "SerializeOptions.java"


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/b;-><init>()V

    const/16 v0, 0x800

    .line 2
    iput v0, p0, Lf/d;->c:I

    const-string v0, "\n"

    .line 3
    iput-object v0, p0, Lf/d;->d:Ljava/lang/String;

    const-string v0, "  "

    .line 4
    iput-object v0, p0, Lf/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lf/d;->f:I

    .line 6
    iput-boolean v0, p0, Lf/d;->g:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lf/b;-><init>(I)V

    const/16 p1, 0x800

    .line 8
    iput p1, p0, Lf/d;->c:I

    const-string p1, "\n"

    .line 9
    iput-object p1, p0, Lf/d;->d:Ljava/lang/String;

    const-string p1, "  "

    .line 10
    iput-object p1, p0, Lf/d;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lf/d;->f:I

    .line 12
    iput-boolean p1, p0, Lf/d;->g:Z

    return-void
.end method


# virtual methods
.method public A(Z)Lf/d;
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lf/d;

    invoke-virtual {p0}, Lf/b;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lf/d;-><init>(I)V

    .line 2
    iget v1, p0, Lf/d;->f:I

    invoke-virtual {v0, v1}, Lf/d;->v(I)Lf/d;

    .line 3
    iget-object v1, p0, Lf/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/d;->w(Ljava/lang/String;)Lf/d;

    .line 4
    iget-object v1, p0, Lf/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/d;->x(Ljava/lang/String;)Lf/d;

    .line 5
    iget p0, p0, Lf/d;->c:I

    invoke-virtual {v0, p0}, Lf/d;->z(I)Lf/d;
    :try_end_0
    .catch Lc/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected e()I
    .locals 0

    const/16 p0, 0x1370

    return p0
.end method

.method public h()I
    .locals 0

    iget p0, p0, Lf/d;->f:I

    return p0
.end method

.method public i()Z
    .locals 1

    invoke-virtual {p0}, Lf/b;->d()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, Lf/b;->d()I

    move-result p0

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "UTF-16BE"

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/d;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "UTF-16LE"

    return-object p0

    :cond_1
    const-string p0, "UTF-8"

    return-object p0
.end method

.method public l()Z
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public p()Z
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lf/d;->g:Z

    return p0
.end method

.method public r()I
    .locals 0

    iget p0, p0, Lf/d;->c:I

    return p0
.end method

.method public s()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public t()Z
    .locals 1

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public u()Z
    .locals 1

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lf/b;->c(I)Z

    move-result p0

    return p0
.end method

.method public v(I)Lf/d;
    .locals 0

    iput p1, p0, Lf/d;->f:I

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lf/d;
    .locals 0

    iput-object p1, p0, Lf/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lf/d;
    .locals 0

    iput-object p1, p0, Lf/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public y(Z)Lf/d;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lf/b;->f(IZ)V

    return-object p0
.end method

.method public z(I)Lf/d;
    .locals 0

    iput p1, p0, Lf/d;->c:I

    return-object p0
.end method
