.class public final synthetic Lcom/samsung/android/camera/core2/maker/ql;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;

.field public final synthetic b:Lcom/samsung/android/camera/core2/ExtraBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;Lcom/samsung/android/camera/core2/ExtraBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/ql;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/ql;->b:Lcom/samsung/android/camera/core2/ExtraBundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/ql;->a:Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/ql;->b:Lcom/samsung/android/camera/core2/ExtraBundle;

    check-cast p1, [B

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;->e(Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$7;Lcom/samsung/android/camera/core2/ExtraBundle;[B)V

    return-void
.end method
