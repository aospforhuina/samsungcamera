.class Lr/z;
.super Ljava/lang/Object;
.source "PathKeyframeParser.java"


# direct methods
.method static a(Ls/c;Lh/h;)Lk/i;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ls/c;->z()Ls/c$b;

    move-result-object v0

    sget-object v1, Ls/c$b;->c:Ls/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 2
    invoke-static {}, Lt/h;->e()F

    move-result v3

    sget-object v4, Lr/a0;->a:Lr/a0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v6}, Lr/t;->c(Ls/c;Lh/h;FLr/n0;ZZ)Lu/a;

    move-result-object p0

    .line 4
    new-instance v0, Lk/i;

    invoke-direct {v0, p1, p0}, Lk/i;-><init>(Lh/h;Lu/a;)V

    return-object v0
.end method
