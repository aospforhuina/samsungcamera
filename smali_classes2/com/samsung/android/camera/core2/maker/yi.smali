.class public final synthetic Lcom/samsung/android/camera/core2/maker/yi;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/SrcbEventFinderNode;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/SrcbEventFinderNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/yi;->a:Lcom/samsung/android/camera/core2/node/SrcbEventFinderNode;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/yi;->a:Lcom/samsung/android/camera/core2/node/SrcbEventFinderNode;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/SrcbEventFinderNode;->isEventFinderNodeInitialized()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
