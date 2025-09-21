.class Lk/o$a;
.super Lu/c;
.source "TextKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/o;->q(Lu/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/c<",
        "Lm/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lu/b;

.field final synthetic e:Lu/c;

.field final synthetic f:Lm/b;

.field final synthetic g:Lk/o;


# direct methods
.method constructor <init>(Lk/o;Lu/b;Lu/c;Lm/b;)V
    .locals 0

    iput-object p1, p0, Lk/o$a;->g:Lk/o;

    iput-object p2, p0, Lk/o$a;->d:Lu/b;

    iput-object p3, p0, Lk/o$a;->e:Lu/c;

    iput-object p4, p0, Lk/o$a;->f:Lm/b;

    invoke-direct {p0}, Lu/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lu/b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lk/o$a;->d(Lu/b;)Lm/b;

    move-result-object p0

    return-object p0
.end method

.method public d(Lu/b;)Lm/b;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/b<",
            "Lm/b;",
            ">;)",
            "Lm/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk/o$a;->d:Lu/b;

    invoke-virtual {p1}, Lu/b;->f()F

    move-result v1

    invoke-virtual {p1}, Lu/b;->a()F

    move-result v2

    invoke-virtual {p1}, Lu/b;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/b;

    iget-object v3, v3, Lm/b;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lu/b;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/b;

    iget-object v4, v4, Lm/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lu/b;->d()F

    move-result v5

    invoke-virtual {p1}, Lu/b;->c()F

    move-result v6

    .line 3
    invoke-virtual {p1}, Lu/b;->e()F

    move-result v7

    .line 4
    invoke-virtual/range {v0 .. v7}, Lu/b;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lu/b;

    .line 5
    iget-object v0, p0, Lk/o$a;->e:Lu/c;

    iget-object v1, p0, Lk/o$a;->d:Lu/b;

    invoke-virtual {v0, v1}, Lu/c;->a(Lu/b;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lu/b;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lu/b;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lu/b;->g()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lm/b;

    .line 7
    iget-object v1, p0, Lk/o$a;->f:Lm/b;

    iget-object v3, p1, Lm/b;->b:Ljava/lang/String;

    iget v4, p1, Lm/b;->c:F

    iget-object v5, p1, Lm/b;->d:Lm/b$a;

    iget v6, p1, Lm/b;->e:I

    iget v7, p1, Lm/b;->f:F

    iget v8, p1, Lm/b;->g:F

    iget v9, p1, Lm/b;->h:I

    iget v10, p1, Lm/b;->i:I

    iget v11, p1, Lm/b;->j:F

    iget-boolean v12, p1, Lm/b;->k:Z

    invoke-virtual/range {v1 .. v12}, Lm/b;->a(Ljava/lang/String;Ljava/lang/String;FLm/b$a;IFFIIFZ)V

    .line 8
    iget-object p0, p0, Lk/o$a;->f:Lm/b;

    return-object p0
.end method
