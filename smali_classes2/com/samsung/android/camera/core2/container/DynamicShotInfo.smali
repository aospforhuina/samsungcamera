.class public Lcom/samsung/android/camera/core2/container/DynamicShotInfo;
.super Ljava/lang/Object;
.source "DynamicShotInfo.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    const/high16 v0, -0x80000000

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    .line 4
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 5
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    .line 8
    iput p2, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    .line 9
    iput p3, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    .line 10
    iput-wide p4, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/container/DynamicShotInfo;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->e()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    return p0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    return-wide v0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    return p0
.end method

.method public d()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    const/high16 v0, -0x80000000

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    return p0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    return-void
.end method

.method public h(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->a:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->b:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->E(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->c:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/samsung/android/camera/core2/container/DynamicShotInfo;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x4

    aput-object p0, v1, v2

    const-string p0, "processingMode = 0x%X, dsCondition = 0x%X, dsMode = %s, dsExtraInfo = 0x%X, dsDeviceInfo = 0x%X"

    .line 5
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
