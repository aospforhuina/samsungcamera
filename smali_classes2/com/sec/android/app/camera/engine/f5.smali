.class public final synthetic Lcom/sec/android/app/camera/engine/f5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/snap/camerakit/common/Consumer;


# instance fields
.field public final synthetic a:Lcom/snap/camerakit/lenses/LensesComponent$Lens;


# direct methods
.method public synthetic constructor <init>(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/f5;->a:Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/f5;->a:Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->g(Lcom/snap/camerakit/lenses/LensesComponent$Lens;Ljava/lang/Boolean;)V

    return-void
.end method
