.class Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;
.super La4/b;
.source "EngineFaceProcessor.java"

# interfaces
.implements La4/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "EngineFaceProcessor"


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, La4/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->a:Z

    :try_start_0
    const-string v0, "rm-faceprocessor-jni"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling FaceProcessor as Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private native FaceProcessorRunByteArray([BII)[D
.end method

.method private native FaceProcessordeinit()V
.end method

.method private native FaceProcessorinit()V
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g(Lz3/a;Lz3/a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lz3/a;->b()Lz3/a$c;

    move-result-object p0

    invoke-virtual {p0}, Lz3/a$c;->b()D

    move-result-wide v0

    invoke-virtual {p1}, Lz3/a;->b()Lz3/a$c;

    move-result-object p0

    invoke-virtual {p0}, Lz3/a$c;->a()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->d(DD)I

    move-result p0

    .line 2
    invoke-virtual {p2}, Lz3/a;->b()Lz3/a$c;

    move-result-object p1

    invoke-virtual {p1}, Lz3/a$c;->b()D

    move-result-wide v0

    invoke-virtual {p2}, Lz3/a;->b()Lz3/a$c;

    move-result-object p1

    invoke-virtual {p1}, Lz3/a$c;->a()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->d(DD)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lz3/g;Lz3/g;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lz3/g;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lz3/g;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lz3/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lz3/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lz3/g;->b()I

    move-result v0

    invoke-virtual {p2}, Lz3/g;->b()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lz3/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz3/a;

    invoke-virtual {v0}, Lz3/a;->a()Lz3/a$b;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lz3/g;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz3/a;

    invoke-virtual {v2}, Lz3/a;->a()Lz3/a$b;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lz3/g;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz3/a;

    invoke-virtual {p2}, Lz3/g;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz3/a;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->g(Lz3/a;Lz3/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, La4/b;->b()V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->FaceProcessordeinit()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, La4/b;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 2
    iget-boolean p1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->a:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->FaceProcessorinit()V

    return-void
.end method

.method public e(Lz3/c;)Lz3/g;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->a:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process E : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lz3/c;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lz3/c;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->a(Lz3/c;)F

    move-result v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateFaceRatioInOrigImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v3, Lz3/g;

    invoke-direct {v3}, Lz3/g;-><init>()V

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const-string v5, "process X"

    if-ltz v4, :cond_1

    const v4, 0x3ca3d70a    # 0.02f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    const-string v0, "returning resultInfo without any expression either because no face or smaller face ratio"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 8
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lz3/c;->h()I

    move-result v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lz3/c;->e()I

    move-result v4

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual/range {p1 .. p1}, Lz3/c;->b()[B

    move-result-object v7

    .line 12
    invoke-direct {v0, v7, v2, v4}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->FaceProcessorRunByteArray([BII)[D

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 13
    aget-wide v7, v0, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v2, v7

    .line 14
    invoke-virtual {v3, v2}, Lz3/g;->j(I)V

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Double;

    mul-int/lit8 v8, v4, 0x16

    const/4 v9, 0x3

    add-int/2addr v8, v9

    add-int/lit8 v10, v8, 0x8

    .line 15
    aget-wide v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v1

    add-int/lit8 v10, v8, 0x9

    .line 16
    aget-wide v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    const/4 v10, 0x2

    add-int/lit8 v11, v8, 0xa

    .line 17
    aget-wide v11, v0, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v10, v8, 0xb

    .line 18
    aget-wide v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v9

    add-int/lit8 v9, v8, 0xe

    .line 19
    aget-wide v11, v0, v9

    add-int/lit8 v9, v8, 0xf

    .line 20
    aget-wide v13, v0, v9

    add-int/lit8 v9, v8, 0x10

    .line 21
    aget-wide v15, v0, v9

    .line 22
    aget-wide v8, v0, v8

    double-to-int v8, v8

    .line 23
    new-instance v9, Lz3/a;

    invoke-direct {v9}, Lz3/a;-><init>()V

    .line 24
    invoke-static {v7, v9}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->b([Ljava/lang/Double;Lz3/a;)V

    .line 25
    invoke-static {v8, v9}, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor$a;->c(ILz3/a;)V

    move-object v10, v9

    .line 26
    invoke-virtual/range {v10 .. v16}, Lz3/a;->e(DDD)V

    .line 27
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v7, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FaceFeatureInfo: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lz3/a;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "No face attributes found"

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_3
    invoke-virtual {v3, v6}, Lz3/g;->k(Ljava/util/List;)V

    .line 31
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineFaceProcessor;->b:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
