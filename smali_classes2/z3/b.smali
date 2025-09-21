.class public Lz3/b;
.super Ljava/lang/Object;
.source "FrameBuilder.java"


# direct methods
.method public static a(Lz3/d;)Lz3/c;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lz3/d;->f()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lz3/d;->e()I

    move-result v1

    const/16 v2, 0x200

    if-le v0, v1, :cond_0

    mul-int/lit16 v3, v1, 0x200

    .line 3
    div-int/2addr v3, v0

    and-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    mul-int/lit16 v3, v0, 0x200

    .line 4
    div-int/2addr v3, v1

    and-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v4

    move v8, v3

    move v3, v2

    move v2, v8

    .line 5
    :goto_0
    invoke-static {}, Lb4/a;->b()J

    move-result-wide v4

    .line 6
    invoke-virtual {p0}, Lz3/d;->d()[B

    move-result-object v6

    invoke-static {v6, v0, v1, v2, v3}, Lcom/samsung/android/rapidmomentengine/utils/Utility;->a([BIIII)[B

    move-result-object v0

    const-string v1, "RapidMomentSync"

    const-string v6, "resize"

    const-string v7, "Process"

    .line 7
    invoke-static {v4, v5, v1, v6, v7}, Lb4/a;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lz3/c;

    invoke-direct {v1}, Lz3/c;-><init>()V

    .line 9
    invoke-virtual {v1, v2}, Lz3/c;->r(I)V

    .line 10
    invoke-virtual {v1, v3}, Lz3/c;->n(I)V

    .line 11
    invoke-virtual {p0}, Lz3/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lz3/c;->p(I)V

    .line 12
    invoke-virtual {p0}, Lz3/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lz3/c;->o(I)V

    .line 13
    invoke-virtual {p0}, Lz3/d;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lz3/c;->q(J)V

    .line 14
    invoke-virtual {p0}, Lz3/d;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lz3/d;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    invoke-virtual {p0}, Lz3/d;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz3/c;->l(Ljava/util/List;)V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lz3/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz3/c;->m(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, v0}, Lz3/c;->j([B)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {v1, v0}, Lz3/c;->i([B)V

    .line 19
    invoke-virtual {p0}, Lz3/d;->a()I

    move-result p0

    invoke-virtual {v1, p0}, Lz3/c;->k(I)V

    return-object v1
.end method
