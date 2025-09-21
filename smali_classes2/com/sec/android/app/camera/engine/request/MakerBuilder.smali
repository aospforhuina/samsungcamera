.class Lcom/sec/android/app/camera/engine/request/MakerBuilder;
.super Ljava/lang/Object;
.source "MakerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/MakerBuilder$MultiMakerBuilder;,
        Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;
    }
.end annotation


# static fields
.field private static final mMakerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMultiMakerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/engine/request/MakerBuilder$MultiMakerBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerMap:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMultiMakerMap:Ljava/util/HashMap;

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->initializeMakerMap()V

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->initializeMultiMakerMap()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$6(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$11(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static build(Ljava/lang/Class;Lcom/sec/android/app/camera/interfaces/InternalEngine;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/MakerInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sec/android/app/camera/interfaces/InternalEngine;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/samsung/android/camera/core2/MakerInterface;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/samsung/android/camera/core2/maker/MakerFactory;->a(Ljava/lang/Class;Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/camera/core2/MakerInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid shootingMode ID : "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$2(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$14(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$16(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$8(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMultiMakerMap$22(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static getMakerClass(IILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sec/android/app/camera/interfaces/InternalEngine;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMultiMakerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder$MultiMakerBuilder;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$MultiMakerBuilder;->build(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/engine/request/MakerBuilder$Builder;->build(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid shootingMode ID : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$15(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$1(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static initializeMakerMap()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMakerMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/p;->a:Lcom/sec/android/app/camera/engine/request/p;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/i0;->a:Lcom/sec/android/app/camera/engine/request/i0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/d0;->a:Lcom/sec/android/app/camera/engine/request/d0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/q;->a:Lcom/sec/android/app/camera/engine/request/q;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x27

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/o;->a:Lcom/sec/android/app/camera/engine/request/o;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xd

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/w;->a:Lcom/sec/android/app/camera/engine/request/w;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2a

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/n;->a:Lcom/sec/android/app/camera/engine/request/n;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/x;->a:Lcom/sec/android/app/camera/engine/request/x;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x29

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/g0;->a:Lcom/sec/android/app/camera/engine/request/g0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/z;->a:Lcom/sec/android/app/camera/engine/request/z;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x22

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/u;->a:Lcom/sec/android/app/camera/engine/request/u;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x25

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/y;->a:Lcom/sec/android/app/camera/engine/request/y;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x23

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/s;->a:Lcom/sec/android/app/camera/engine/request/s;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2c

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/v;->a:Lcom/sec/android/app/camera/engine/request/v;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/e0;->a:Lcom/sec/android/app/camera/engine/request/e0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/h0;->a:Lcom/sec/android/app/camera/engine/request/h0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/f0;->a:Lcom/sec/android/app/camera/engine/request/f0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1d

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/k0;->a:Lcom/sec/android/app/camera/engine/request/k0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/j0;->a:Lcom/sec/android/app/camera/engine/request/j0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x28

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/t;->a:Lcom/sec/android/app/camera/engine/request/t;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x21

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/r;->a:Lcom/sec/android/app/camera/engine/request/r;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x24

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/a0;->a:Lcom/sec/android/app/camera/engine/request/a0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initializeMultiMakerMap()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->mMultiMakerMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/b0;->a:Lcom/sec/android/app/camera/engine/request/b0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2b

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/c0;->a:Lcom/sec/android/app/camera/engine/request/c0;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$18(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$17(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$4(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$0(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->d:Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETAIL_ENHANCER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->a:Ljava/lang/Class;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->c:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$1(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    .line 1
    sget-object p0, Lu3/b;->P2:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->j:Ljava/lang/Class;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->k:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$10(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->q:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$11(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->r:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$12(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->D:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$13(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->b:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$14(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->y:Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoBeautySnapshotSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->t:Ljava/lang/Class;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->v:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$15(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->o:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$16(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->g:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$17(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->isSuperSlowMotionSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->s:Ljava/lang/Class;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->f:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$18(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->e:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$19(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->l:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$2(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->k:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$20(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->x:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$21(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->is120FpsCamcorderResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->A:Ljava/lang/Class;

    return-object p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->l:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$3(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->i:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$4(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    .line 1
    sget-object p0, Lu3/b;->t2:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->C:Ljava/lang/Class;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->c:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$5(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->m:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$6(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->b:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$7(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->h:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$8(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->n:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMakerMap$9(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->w:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMultiMakerMap$22(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/16 p1, 0x14

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported camera id in this shooting mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->x:Ljava/lang/Class;

    return-object p0
.end method

.method private static synthetic lambda$initializeMultiMakerMap$23(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 2

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported camera id in this shooting mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/maker/MakerFactory;->x:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic m(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMultiMakerMap$23(ILcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$0(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$3(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$20(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$12(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$19(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$10(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$13(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$5(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$7(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$9(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/MakerBuilder;->lambda$initializeMakerMap$21(Lcom/sec/android/app/camera/interfaces/InternalEngine;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
