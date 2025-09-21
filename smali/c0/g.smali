.class public Lc0/g;
.super Lu0/g;
.source "LruResourceCache.java"

# interfaces
.implements Lc0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu0/g<",
        "Lx/f;",
        "La0/v<",
        "*>;>;",
        "Lc0/h;"
    }
.end annotation


# instance fields
.field private e:Lc0/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lu0/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lu0/g;->b()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lu0/g;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lu0/g;->m(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic c(Lx/f;)La0/v;
    .locals 0

    invoke-super {p0, p1}, Lu0/g;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/v;

    return-object p0
.end method

.method public bridge synthetic d(Lx/f;La0/v;)La0/v;
    .locals 0

    invoke-super {p0, p1, p2}, Lu0/g;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/v;

    return-object p0
.end method

.method public e(Lc0/h$a;)V
    .locals 0

    iput-object p1, p0, Lc0/g;->e:Lc0/h$a;

    return-void
.end method

.method protected bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La0/v;

    invoke-virtual {p0, p1}, Lc0/g;->n(La0/v;)I

    move-result p0

    return p0
.end method

.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lx/f;

    check-cast p2, La0/v;

    invoke-virtual {p0, p1, p2}, Lc0/g;->o(Lx/f;La0/v;)V

    return-void
.end method

.method protected n(La0/v;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Lu0/g;->i(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-interface {p1}, La0/v;->a()I

    move-result p0

    return p0
.end method

.method protected o(Lx/f;La0/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            "La0/v<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lc0/g;->e:Lc0/h$a;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lc0/h$a;->a(La0/v;)V

    :cond_0
    return-void
.end method
