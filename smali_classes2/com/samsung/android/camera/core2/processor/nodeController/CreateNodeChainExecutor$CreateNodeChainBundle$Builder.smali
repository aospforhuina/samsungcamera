.class Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;
.super Ljava/lang/Object;
.source "CreateNodeChainExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private imageSize:Landroid/util/Size;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;->imageSize:Landroid/util/Size;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;-><init>(Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;)V

    return-object v0
.end method

.method public setImageSize(Landroid/util/Size;)Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;->imageSize:Landroid/util/Size;

    return-object p0
.end method
