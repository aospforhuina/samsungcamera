.class final Le7/r;
.super Le7/g;
.source "Produce.kt"

# interfaces
.implements Le7/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le7/g<",
        "TE;>;",
        "Le7/s<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln6/g;Le7/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g;",
            "Le7/f<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Le7/g;-><init>(Ln6/g;Le7/f;ZZ)V

    return-void
.end method


# virtual methods
.method protected C0(Lk6/q;)V
    .locals 1

    invoke-virtual {p0}, Le7/g;->B0()Le7/f;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p1}, Le7/y$a;->a(Le7/y;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public isActive()Z
    .locals 0

    invoke-super {p0}, Lc7/a;->isActive()Z

    move-result p0

    return p0
.end method

.method protected y0(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le7/g;->B0()Le7/f;

    move-result-object v0

    invoke-interface {v0, p1}, Le7/y;->j(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lc7/a;->getContext()Ln6/g;

    move-result-object p0

    invoke-static {p0, p1}, Lc7/f0;->a(Ln6/g;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic z0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lk6/q;

    invoke-virtual {p0, p1}, Le7/r;->C0(Lk6/q;)V

    return-void
.end method
