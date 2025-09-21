.class public abstract Lw5/p0;
.super Ljava/lang/Object;
.source "QrCodeResult.java"


# instance fields
.field protected final a:Ly2/u;

.field protected final b:Lw5/p0;

.field private final c:Lw5/p2;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw5/k0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lw5/p0;-><init>(Landroid/content/Context;Lw5/p2;Ly2/u;Lw5/p0;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lw5/p2;Ly2/u;Lw5/p0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lw5/p0;->c:Lw5/p2;

    .line 4
    iput-object p3, p0, Lw5/p0;->a:Ly2/u;

    .line 5
    iput-object p4, p0, Lw5/p0;->b:Lw5/p0;

    .line 6
    invoke-virtual {p0, p1}, Lw5/p0;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw5/p0;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1, p3}, Lw5/p0;->d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw5/p0;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1, p3}, Lw5/p0;->f(Landroid/content/Context;Ly2/u;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw5/p0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw5/p0;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1, p3}, Lw5/p0;->b(Landroid/content/Context;Ly2/u;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lw5/p0;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw5/k0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw5/p0;->g:Ljava/util/List;

    return-object p0
.end method

.method protected b(Landroid/content/Context;Ly2/u;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ly2/u;",
            ")",
            "Ljava/util/List<",
            "Lw5/k0;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw5/p0;->c:Lw5/p2;

    invoke-virtual {p0}, Lw5/p2;->a()Lw5/k0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/p0;->e:Ljava/lang/String;

    return-object p0
.end method

.method protected d(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p2}, Ly2/u;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/p0;->f:Ljava/lang/String;

    return-object p0
.end method

.method protected f(Landroid/content/Context;Ly2/u;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/p0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lw5/k0;
    .locals 0

    iget-object p0, p0, Lw5/p0;->c:Lw5/p2;

    invoke-virtual {p0}, Lw5/p2;->a()Lw5/k0;

    move-result-object p0

    return-object p0
.end method

.method public h()Ly2/u;
    .locals 0

    iget-object p0, p0, Lw5/p0;->a:Ly2/u;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/p0;->c:Lw5/p2;

    invoke-virtual {p0}, Lw5/p2;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/p0;->d:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract k(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public l()Lw5/p2;
    .locals 0

    iget-object p0, p0, Lw5/p0;->c:Lw5/p2;

    return-object p0
.end method

.method protected m(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public n()Z
    .locals 1

    iget-object p0, p0, Lw5/p0;->g:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
