.class Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;
.super Ljava/lang/Object;
.source "CreateNodeChainExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateNodeChainBundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;
    }
.end annotation


# instance fields
.field private final imageSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;->a(Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle$Builder;)Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;->imageSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public getImageSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/nodeController/CreateNodeChainExecutor$CreateNodeChainBundle;->imageSize:Landroid/util/Size;

    return-object p0
.end method
