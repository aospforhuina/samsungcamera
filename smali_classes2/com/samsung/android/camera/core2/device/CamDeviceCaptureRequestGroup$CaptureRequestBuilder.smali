.class Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;
.super Ljava/lang/Object;
.source "CamDeviceCaptureRequestGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CaptureRequestBuilder"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/samsung/android/camera/core2/CamDevice;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->e:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/camera/core2/device/c0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;-><init>(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;JZ)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->c(JZ)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->d(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)V

    return-void
.end method

.method private c(JZ)Landroid/hardware/camera2/CaptureRequest;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->d:Ljava/util/Map;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->c:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Lcom/samsung/android/camera/core2/util/StringUtils$NumComparator;

    invoke-direct {v5}, Lcom/samsung/android/camera/core2/util/StringUtils$NumComparator;-><init>()V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 5
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    .line 6
    invoke-static {v0, v6}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils;->b(Ljava/util/List;Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 7
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->d:Ljava/util/Map;

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->c:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    :cond_2
    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-static {v0, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->a(Ljava/util/Map;Landroid/util/Pair;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 12
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    :cond_3
    const-string v4, "buildCaptureRequest fail - index %d, can\'t set chs flag for highSpeed request list : %s"

    if-eqz p3, :cond_4

    .line 13
    :try_start_0
    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->a()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    .line 16
    invoke-static {p3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    .line 19
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    aput-object p0, v0, v2

    .line 20
    invoke-static {p3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->c:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v5, v6, v7, p1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    .line 24
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    .line 25
    :try_start_1
    invoke-static {}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup;->a()Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, p3, v3

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 26
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    aput-object p1, v0, v2

    invoke-static {p3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_3
    move-exception p1

    .line 27
    new-instance p2, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v3

    .line 29
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    aput-object p0, v0, v2

    .line 30
    invoke-static {p3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_4
    return-object p1

    .line 31
    :cond_7
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p3, v1, [Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "buildCaptureRequest fail - index %d, builder(usage %d) is null"

    .line 33
    invoke-static {p2, p0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_8
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p3, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v3

    const-string p0, "buildCaptureRequest fail - index %d, targetSet is empty"

    .line 36
    invoke-static {p2, p0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_9
    new-instance p1, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object p2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array p3, v1, [Ljava/lang/Object;

    iget v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    iget p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "buildCaptureRequest fail - index %d, builderMap(usage %d) is null"

    .line 39
    invoke-static {p2, p0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->e:I

    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->e(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->e(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->e:I

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->a(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->d:Ljava/util/Map;

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->b(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)Lcom/samsung/android/camera/core2/CamDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->c:Lcom/samsung/android/camera/core2/CamDevice;

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;->d(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestTarget;)Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->a:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$CaptureRequestBuilder;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "CaptureRequestBuilder - index %d, builderUsage %d, targetCount %d"

    .line 3
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
