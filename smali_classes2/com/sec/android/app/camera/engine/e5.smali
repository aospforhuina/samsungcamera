.class public final synthetic Lcom/sec/android/app/camera/engine/e5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/snap/camerakit/common/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/e5;->a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/e5;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/e5;->a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/e5;->b:Ljava/util/List;

    check-cast p1, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->m(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V

    return-void
.end method
