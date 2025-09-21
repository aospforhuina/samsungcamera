.class public Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;
.super Ljava/lang/Object;
.source "DimScreenLayerPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "DimScreenLayerPresenter"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mView:Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;->mView:Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;->mView:Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;->resetView()V

    return-void
.end method
