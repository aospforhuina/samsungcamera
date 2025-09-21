.class public Lz3/g;
.super Ljava/lang/Object;
.source "ResultInfo.java"


# instance fields
.field public a:D

.field public b:D

.field public c:[J

.field public d:[B

.field public e:[D

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz3/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    int-to-double v1, v0

    .line 2
    iput-wide v1, p0, Lz3/g;->a:D

    const/4 v3, 0x0

    .line 3
    iput-object v3, p0, Lz3/g;->c:[J

    .line 4
    iput-object v3, p0, Lz3/g;->d:[B

    .line 5
    iput-object v3, p0, Lz3/g;->e:[D

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lz3/g;->f:Ljava/util/List;

    .line 7
    iput-wide v1, p0, Lz3/g;->b:D

    .line 8
    iput v0, p0, Lz3/g;->g:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz3/g;->h:Ljava/util/List;

    const-string v0, "none"

    .line 10
    iput-object v0, p0, Lz3/g;->l:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lz3/g;->i()V

    const-string v0, ""

    .line 12
    invoke-virtual {p0, v0}, Lz3/g;->n(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Lz3/g;->l(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz3/g;->m:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Float;)D
    .locals 2

    invoke-static {p0}, Lz3/g;->g(Ljava/lang/Float;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic g(Ljava/lang/Float;)D
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lz3/g;->g:I

    return p0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz3/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lz3/g;->h:Ljava/util/List;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz3/g;->k:Ljava/lang/String;

    return-object p0
.end method

.method public e()Lz3/e;
    .locals 3

    .line 1
    new-instance v0, Lz3/e;

    invoke-direct {v0}, Lz3/e;-><init>()V

    .line 2
    iget-boolean v1, p0, Lz3/g;->i:Z

    invoke-virtual {v0, v1}, Lz3/e;->c(Z)V

    .line 3
    iget-wide v1, p0, Lz3/g;->n:J

    invoke-virtual {v0, v1, v2}, Lz3/e;->e(J)V

    .line 4
    iget-object p0, p0, Lz3/g;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lz3/e;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lz3/g;->i:Z

    return p0
.end method

.method public h(Lz3/g;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lz3/g;->c:[J

    if-eqz v0, :cond_1

    .line 2
    iput-object v0, p0, Lz3/g;->c:[J

    .line 3
    :cond_1
    iget-wide v0, p1, Lz3/g;->a:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    .line 4
    iput-wide v0, p0, Lz3/g;->a:D

    .line 5
    :cond_2
    iget-wide v0, p1, Lz3/g;->b:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_3

    .line 6
    iput-wide v0, p0, Lz3/g;->b:D

    .line 7
    :cond_3
    iget v0, p1, Lz3/g;->g:I

    if-ltz v0, :cond_4

    .line 8
    iput v0, p0, Lz3/g;->g:I

    .line 9
    :cond_4
    iget-object v0, p1, Lz3/g;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    iget-object v0, p1, Lz3/g;->h:Ljava/util/List;

    iput-object v0, p0, Lz3/g;->h:Ljava/util/List;

    .line 11
    :cond_5
    iget-object v0, p1, Lz3/g;->d:[B

    if-eqz v0, :cond_6

    .line 12
    iput-object v0, p0, Lz3/g;->d:[B

    .line 13
    :cond_6
    iget-object v0, p1, Lz3/g;->e:[D

    if-eqz v0, :cond_7

    .line 14
    iput-object v0, p0, Lz3/g;->e:[D

    .line 15
    :cond_7
    iget-object v0, p1, Lz3/g;->l:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 16
    iget-object v0, p1, Lz3/g;->l:Ljava/lang/String;

    iput-object v0, p0, Lz3/g;->l:Ljava/lang/String;

    .line 17
    :cond_8
    iget-object v0, p1, Lz3/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    iget-object v0, p1, Lz3/g;->f:Ljava/util/List;

    iput-object v0, p0, Lz3/g;->f:Ljava/util/List;

    .line 19
    :cond_9
    iget-object v0, p1, Lz3/g;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 20
    iget-object p1, p1, Lz3/g;->m:Ljava/util/List;

    iput-object p1, p0, Lz3/g;->m:Ljava/util/List;

    :cond_a
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lz3/g;->i:Z

    const-string v0, "none"

    .line 2
    iput-object v0, p0, Lz3/g;->l:Ljava/lang/String;

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lz3/g;->g:I

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz3/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz3/g;->h:Ljava/util/List;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz3/g;->k:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lz3/g;->i:Z

    .line 2
    iput-object p1, p0, Lz3/g;->l:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz3/g;->j:Ljava/lang/String;

    return-void
.end method

.method public o(J)V
    .locals 0

    iput-wide p1, p0, Lz3/g;->n:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lz3/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lz3/g;->a:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lz3/g;->c:[J

    if-eqz v2, :cond_0

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-wide v5, v2, v4

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lz3/g;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lz3/g;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz3/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz3/g;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lz3/f;->a:Lz3/f;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/DoubleStream;->sum()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz3/g;->f()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
