.class public final synthetic Lcom/sec/android/app/camera/engine/x4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/snap/camerakit/lenses/LensesComponent$Hints$View;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/FunManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/x4;->a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/x4;->a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    check-cast p1, Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->i(Lcom/sec/android/app/camera/engine/FunManagerImpl;Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model;)V

    return-void
.end method
