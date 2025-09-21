.class public Lcom/samsung/android/camera/core2/local/util/MarshalUtils;
.super Ljava/lang/Object;
.source "MarshalUtils.java"


# static fields
.field private static final a:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "MarshalUtils"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Lcom/samsung/android/camera/core2/container/PetDetectionInfo;)[I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "marshalPetDetectionInfo failed - array length is zero"

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    .line 3
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, p0, v2

    .line 6
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->d()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;->b()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lt3/a;->a:Lt3/a;

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 14
    sget-object v1, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v2, "marshalPetDetectionInfo failed, %s"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/camera/core2/util/CLog;->f(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static b([I)[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "unmarshalBokehFocusedRectWithPet failed - array length is zero"

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :try_start_0
    aget v3, p0, v1

    if-eqz v3, :cond_2

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v4, "unmarshalBokehFocusedRectWithPet failed - unknown version(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_2
    array-length v4, p0

    sub-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_3

    .line 6
    sget-object v4, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v5, "unmarshalBokehFocusedRectWithPet failed - array length(%d) is invalid for version(%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 7
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v5, p0

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x7

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_5

    mul-int/lit8 v7, v6, 0x7

    add-int/2addr v7, v2

    if-nez v3, :cond_4

    add-int/lit8 v8, v7, 0x0

    .line 9
    aget v8, p0, v8

    add-int/lit8 v9, v7, 0x1

    .line 10
    aget v9, p0, v9

    add-int/lit8 v10, v7, 0x2

    .line 11
    aget v10, p0, v10

    .line 12
    new-instance v11, Landroid/graphics/Rect;

    add-int/lit8 v12, v7, 0x3

    aget v12, p0, v12

    add-int/lit8 v13, v7, 0x4

    aget v13, p0, v13

    add-int/lit8 v14, v7, 0x5

    aget v14, p0, v14

    add-int/lit8 v7, v7, 0x6

    aget v7, p0, v7

    invoke-direct {v11, v12, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v7, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;-><init>(IIILandroid/graphics/Rect;)V

    invoke-interface {v4, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    new-array p0, v1, [Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;

    .line 14
    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    sget-object v1, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "unmarshalBokehFocusedRectWithPet failed - can\'t create a BokehFocusedRectWithPet instance, %s"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/camera/core2/util/CLog;->f(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static c([I)[Lcom/samsung/android/camera/core2/container/PetDetectionInfo;
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "unmarshalPetDetectionInfo failed - array length is zero"

    invoke-static {p0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 3
    :try_start_0
    aget v3, p0, v1

    if-eqz v3, :cond_2

    .line 4
    sget-object p0, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v4, "unmarshalPetDetectionInfo failed - unknown version(%d)"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, v4, v2}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_2
    array-length v4, p0

    sub-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_3

    .line 6
    sget-object v4, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v5, "unmarshalPetDetectionInfo failed - array length(%d) is invalid for version(%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v2

    invoke-static {v4, v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->g(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 7
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    array-length v5, p0

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x7

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_5

    mul-int/lit8 v7, v6, 0x7

    add-int/2addr v7, v2

    if-nez v3, :cond_4

    add-int/lit8 v8, v7, 0x0

    .line 9
    aget v8, p0, v8

    add-int/lit8 v9, v7, 0x1

    .line 10
    aget v9, p0, v9

    add-int/lit8 v10, v7, 0x2

    .line 11
    aget v10, p0, v10

    .line 12
    new-instance v11, Landroid/graphics/Rect;

    add-int/lit8 v12, v7, 0x3

    aget v12, p0, v12

    add-int/lit8 v13, v7, 0x4

    aget v13, p0, v13

    add-int/lit8 v14, v7, 0x5

    aget v14, p0, v14

    add-int/lit8 v7, v7, 0x6

    aget v7, p0, v7

    invoke-direct {v11, v12, v13, v14, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v7, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/samsung/android/camera/core2/container/PetDetectionInfo;-><init>(IIILandroid/graphics/Rect;)V

    invoke-interface {v4, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    new-array p0, v1, [Lcom/samsung/android/camera/core2/container/PetDetectionInfo;

    .line 14
    invoke-interface {v4, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/camera/core2/container/PetDetectionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    sget-object v1, Lcom/samsung/android/camera/core2/local/util/MarshalUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v2, "unmarshalPetDetectionInfo failed - can\'t create a PetDetectionInfo instance, %s"

    invoke-static {v1, v2, p0}, Lcom/samsung/android/camera/core2/util/CLog;->f(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
