.class public final synthetic Lcom/samsung/android/camera/core2/maker/t4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/t4;->a:Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/t4;->a:Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/PolarrCompositionGuideNode;->getEngineMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
