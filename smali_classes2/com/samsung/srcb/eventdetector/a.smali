.class public Lcom/samsung/srcb/eventdetector/a;
.super Ljava/lang/Object;
.source "EventFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/srcb/eventdetector/a$a;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/samsung/srcb/eventdetector/a;->b:J

    return-void
.end method

.method private a(JJ)J
    .locals 7

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/srcb/eventdetector/a;->b(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private b(JJJ)J
    .locals 0

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    sub-long p3, p1, p5

    const-wide/16 p5, 0x0

    cmp-long p0, p3, p5

    if-ltz p0, :cond_0

    move-wide p1, p3

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public c()[Lcom/samsung/srcb/eventdetector/a$a;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "EventDetectionV2"

    const-string v2, "getEventList() called"

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/samsung/srcb/eventdetector/JNI;->a()[Lcom/samsung/srcb/eventdetector/a$a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 3
    array-length v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v4, :cond_2

    .line 4
    new-array v3, v4, [Lcom/samsung/srcb/eventdetector/a$a;

    const-wide/16 v8, 0x12c

    if-ne v4, v5, :cond_1

    .line 5
    aget-object v10, v2, v7

    iget-wide v10, v10, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    .line 6
    aget-object v14, v2, v6

    iget-wide v14, v14, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    div-long/2addr v14, v12

    cmp-long v10, v10, v14

    if-lez v10, :cond_0

    .line 7
    new-instance v10, Lcom/samsung/srcb/eventdetector/a$a;

    aget-object v11, v2, v7

    iget-wide v11, v11, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    .line 8
    invoke-direct {v0, v11, v12, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v12

    aget-object v11, v2, v7

    iget-wide v14, v11, Lcom/samsung/srcb/eventdetector/a$a;->b:J

    .line 9
    invoke-direct {v0, v14, v15, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v14

    aget-object v11, v2, v7

    iget v11, v11, Lcom/samsung/srcb/eventdetector/a$a;->c:I

    move/from16 v16, v11

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Lcom/samsung/srcb/eventdetector/a$a;-><init>(JJI)V

    .line 10
    new-instance v11, Lcom/samsung/srcb/eventdetector/a$a;

    aget-object v12, v2, v6

    iget-wide v12, v12, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    .line 11
    invoke-direct {v0, v12, v13, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v18

    aget-object v12, v2, v6

    iget-wide v12, v12, Lcom/samsung/srcb/eventdetector/a$a;->b:J

    .line 12
    invoke-direct {v0, v12, v13, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v20

    aget-object v8, v2, v6

    iget v8, v8, Lcom/samsung/srcb/eventdetector/a$a;->c:I

    move-object/from16 v17, v11

    move/from16 v22, v8

    invoke-direct/range {v17 .. v22}, Lcom/samsung/srcb/eventdetector/a$a;-><init>(JJI)V

    .line 13
    aput-object v11, v3, v7

    .line 14
    aput-object v10, v3, v6

    goto :goto_2

    :cond_0
    move v10, v7

    :goto_0
    if-ge v10, v4, :cond_2

    .line 15
    new-instance v17, Lcom/samsung/srcb/eventdetector/a$a;

    aget-object v11, v2, v10

    iget-wide v11, v11, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    .line 16
    invoke-direct {v0, v11, v12, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v12

    aget-object v11, v2, v10

    iget-wide v14, v11, Lcom/samsung/srcb/eventdetector/a$a;->b:J

    .line 17
    invoke-direct {v0, v14, v15, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v14

    aget-object v11, v2, v10

    iget v11, v11, Lcom/samsung/srcb/eventdetector/a$a;->c:I

    move/from16 v16, v11

    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Lcom/samsung/srcb/eventdetector/a$a;-><init>(JJI)V

    .line 18
    aput-object v17, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_1
    if-ge v10, v4, :cond_2

    .line 19
    new-instance v17, Lcom/samsung/srcb/eventdetector/a$a;

    aget-object v11, v2, v10

    iget-wide v11, v11, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    .line 20
    invoke-direct {v0, v11, v12, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v12

    aget-object v11, v2, v10

    iget-wide v14, v11, Lcom/samsung/srcb/eventdetector/a$a;->b:J

    const-wide/16 v8, 0x0

    .line 21
    invoke-direct {v0, v14, v15, v8, v9}, Lcom/samsung/srcb/eventdetector/a;->a(JJ)J

    move-result-wide v14

    aget-object v8, v2, v10

    iget v8, v8, Lcom/samsung/srcb/eventdetector/a$a;->c:I

    move-object/from16 v11, v17

    move/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lcom/samsung/srcb/eventdetector/a$a;-><init>(JJI)V

    .line 22
    aput-object v17, v3, v10

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v8, 0x12c

    goto :goto_1

    :cond_2
    :goto_2
    move v8, v7

    :goto_3
    const/4 v9, 0x3

    if-ge v8, v4, :cond_3

    new-array v9, v9, [Ljava/lang/Object;

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    aget-object v10, v2, v8

    iget-wide v10, v10, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    aget-object v10, v2, v8

    iget-wide v10, v10, Lcom/samsung/srcb/eventdetector/a$a;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "Native Event[%d] %d - %d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_4
    if-ge v2, v4, :cond_4

    new-array v8, v9, [Ljava/lang/Object;

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v7

    aget-object v10, v3, v2

    iget-wide v10, v10, Lcom/samsung/srcb/eventdetector/a$a;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v6

    aget-object v10, v3, v2

    iget-wide v10, v10, Lcom/samsung/srcb/eventdetector/a$a;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v5

    const-string v10, "Calibrated Event[%d] %d - %d"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v1, -0xa

    .line 25
    iput-wide v1, v0, Lcom/samsung/srcb/eventdetector/a;->b:J

    return-object v3
.end method

.method public d(IIII)I
    .locals 3

    const-string v0, "EventDetectionV2"

    const-string v1, "EventDetection V2 for slomo"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Build_2021_Nov_15_HQ_Modified"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called with: width = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], height = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], inputFormat = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/srcb/eventdetector/a;->a:Z

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/samsung/srcb/eventdetector/a;->b:J

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/srcb/eventdetector/JNI;->b(IIII)I

    move-result p0

    return p0
.end method

.method public e([BIIIIIJ)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processFrame() called with: input = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], orientation = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], timestamp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], baseTimestamp = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/srcb/eventdetector/a;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventDetectionV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/samsung/srcb/eventdetector/a;->a:Z

    if-eqz v0, :cond_0

    const-string p1, "processFrame: return directly. case: it has been released"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcom/samsung/srcb/eventdetector/a;->b:J

    const/4 p0, 0x0

    return p0

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/samsung/srcb/eventdetector/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide p7, p0, Lcom/samsung/srcb/eventdetector/a;->b:J

    .line 6
    :cond_1
    invoke-static/range {p1 .. p8}, Lcom/samsung/srcb/eventdetector/JNI;->c([BIIIIIJ)I

    move-result p0

    return p0
.end method

.method public f()I
    .locals 2

    const-string v0, "EventDetectionV2"

    const-string v1, "release() called"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/srcb/eventdetector/a;->a:Z

    .line 3
    invoke-static {}, Lcom/samsung/srcb/eventdetector/JNI;->d()I

    move-result p0

    return p0
.end method
