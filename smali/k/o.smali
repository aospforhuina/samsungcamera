.class public Lk/o;
.super Lk/g;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk/g<",
        "Lm/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/a<",
            "Lm/b;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lk/g;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lu/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lk/o;->p(Lu/a;F)Lm/b;

    move-result-object p0

    return-object p0
.end method

.method p(Lu/a;F)Lm/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/a<",
            "Lm/b;",
            ">;F)",
            "Lm/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/a;->e:Lu/c;

    if-eqz v0, :cond_2

    .line 2
    iget v1, p1, Lu/a;->g:F

    iget-object v2, p1, Lu/a;->h:Ljava/lang/Float;

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    iget-object v3, p1, Lu/a;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Lm/b;

    .line 3
    iget-object p1, p1, Lu/a;->c:Ljava/lang/Object;

    if-nez p1, :cond_1

    check-cast v3, Lm/b;

    move-object p1, v3

    goto :goto_1

    :cond_1
    check-cast p1, Lm/b;

    .line 4
    :goto_1
    invoke-virtual {p0}, Lk/a;->d()F

    move-result v6

    invoke-virtual {p0}, Lk/a;->f()F

    move-result v7

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    .line 5
    invoke-virtual/range {v0 .. v7}, Lu/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/b;

    return-object p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    .line 6
    iget-object p0, p1, Lu/a;->c:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    check-cast p0, Lm/b;

    return-object p0

    .line 8
    :cond_4
    :goto_2
    iget-object p0, p1, Lu/a;->b:Ljava/lang/Object;

    check-cast p0, Lm/b;

    return-object p0
.end method

.method public q(Lu/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b;

    invoke-direct {v0}, Lu/b;-><init>()V

    .line 2
    new-instance v1, Lm/b;

    invoke-direct {v1}, Lm/b;-><init>()V

    .line 3
    new-instance v2, Lk/o$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lk/o$a;-><init>(Lk/o;Lu/b;Lu/c;Lm/b;)V

    invoke-super {p0, v2}, Lk/a;->n(Lu/c;)V

    return-void
.end method
