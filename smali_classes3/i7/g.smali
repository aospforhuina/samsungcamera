.class final Li7/g;
.super Ljava/lang/Object;
.source "PeekSource.java"

# interfaces
.implements Li7/l;


# instance fields
.field private final a:Li7/c;

.field private final b:Li7/a;

.field private c:Li7/i;

.field private d:I

.field private f:Z

.field private g:J


# direct methods
.method constructor <init>(Li7/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li7/g;->a:Li7/c;

    .line 3
    invoke-interface {p1}, Li7/c;->c()Li7/a;

    move-result-object p1

    iput-object p1, p0, Li7/g;->b:Li7/a;

    .line 4
    iget-object p1, p1, Li7/a;->a:Li7/i;

    iput-object p1, p0, Li7/g;->c:Li7/i;

    if-eqz p1, :cond_0

    .line 5
    iget p1, p1, Li7/i;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Li7/g;->d:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li7/g;->f:Z

    return-void
.end method

.method public s(Li7/a;J)J
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    .line 1
    iget-boolean v3, p0, Li7/g;->f:Z

    if-nez v3, :cond_5

    .line 2
    iget-object v3, p0, Li7/g;->c:Li7/i;

    if-eqz v3, :cond_1

    iget-object v4, p0, Li7/g;->b:Li7/a;

    iget-object v4, v4, Li7/a;->a:Li7/i;

    if-ne v3, v4, :cond_0

    iget v3, p0, Li7/g;->d:I

    iget v4, v4, Li7/i;->b:I

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-wide v0

    .line 4
    :cond_2
    iget-object v0, p0, Li7/g;->a:Li7/c;

    iget-wide v1, p0, Li7/g;->g:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Li7/c;->n(J)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 p0, -0x1

    return-wide p0

    .line 5
    :cond_3
    iget-object v0, p0, Li7/g;->c:Li7/i;

    if-nez v0, :cond_4

    iget-object v0, p0, Li7/g;->b:Li7/a;

    iget-object v0, v0, Li7/a;->a:Li7/i;

    if-eqz v0, :cond_4

    .line 6
    iput-object v0, p0, Li7/g;->c:Li7/i;

    .line 7
    iget v0, v0, Li7/i;->b:I

    iput v0, p0, Li7/g;->d:I

    .line 8
    :cond_4
    iget-object v0, p0, Li7/g;->b:Li7/a;

    iget-wide v0, v0, Li7/a;->b:J

    iget-wide v2, p0, Li7/g;->g:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    iget-object v2, p0, Li7/g;->b:Li7/a;

    iget-wide v4, p0, Li7/g;->g:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Li7/a;->h(Li7/a;JJ)Li7/a;

    .line 10
    iget-wide v0, p0, Li7/g;->g:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Li7/g;->g:J

    return-wide p2

    .line 11
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
