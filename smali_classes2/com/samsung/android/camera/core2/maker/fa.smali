.class public final synthetic Lcom/samsung/android/camera/core2/maker/fa;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/camera/core2/node/Node$OutputPort$PortDataCallback;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/fa;->a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/fa;->a:Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageBuffer;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;->O3(Lcom/samsung/android/camera/core2/maker/BeautyVideoMaker;Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)V

    return-void
.end method
