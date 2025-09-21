.class public Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "SingleBokehEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleBokehEventCallback"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mDetectedPetRectList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDetectedRectList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    .line 2
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    .line 3
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedPetRectList:Ljava/util/SortedMap;

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;ILcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->lambda$onSingleBokehInfoV2Changed$1([Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;ILcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;[Lcom/samsung/android/camera/core2/container/NormalizedRect;ILcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->lambda$onSingleBokehInfoChanged$0([Lcom/samsung/android/camera/core2/container/NormalizedRect;ILcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;)V

    return-void
.end method

.method private synthetic lambda$onSingleBokehInfoChanged$0([Lcom/samsung/android/camera/core2/container/NormalizedRect;ILcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->createArray(I)[Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/container/NormalizedRect;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/callback/RectConverter;->getIndexedRects(Ljava/util/SortedMap;[Landroid/graphics/Rect;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    .line 6
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    const/4 p1, 0x0

    invoke-interface {p3, p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;->onSingleBokehInfoChanged(ILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onSingleBokehInfoV2Changed$1([Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;ILcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;)V
    .locals 7

    if-eqz p1, :cond_3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;->a()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;->a()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 10
    new-array p1, p1, [Landroid/graphics/Rect;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Rect;

    .line 11
    new-array v0, v2, [Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/engine/callback/RectConverter;->getIndexedRects(Ljava/util/SortedMap;[Landroid/graphics/Rect;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedPetRectList:Ljava/util/SortedMap;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/engine/callback/RectConverter;->getIndexedRects(Ljava/util/SortedMap;[Landroid/graphics/Rect;)Ljava/util/SortedMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedPetRectList:Ljava/util/SortedMap;

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedPetRectList:Ljava/util/SortedMap;

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    .line 16
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedRectList:Ljava/util/SortedMap;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;->mDetectedPetRectList:Ljava/util/SortedMap;

    invoke-interface {p3, p2, p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SingleBokehEventListener;->onSingleBokehInfoChanged(ILjava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSingleBokehEventCallback(Lcom/samsung/android/camera/core2/callback/SingleBokehEventCallback;)V

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onError : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SingleBokehEventCallback"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSingleBokehInfoChanged(I[Lcom/samsung/android/camera/core2/container/NormalizedRect;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p3, Lcom/sec/android/app/camera/engine/callback/b1;

    invoke-direct {p3, p0, p2, p1}, Lcom/sec/android/app/camera/engine/callback/b1;-><init>(Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;[Lcom/samsung/android/camera/core2/container/NormalizedRect;I)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSingleBokehInfoV2Changed(I[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p3, Lcom/sec/android/app/camera/engine/callback/a1;

    invoke-direct {p3, p0, p2, p1}, Lcom/sec/android/app/camera/engine/callback/a1;-><init>(Lcom/sec/android/app/camera/engine/callback/SingleBokehEventCallback;[Lcom/samsung/android/camera/core2/container/BokehFocusedRectWithPet;I)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method
