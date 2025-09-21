.class public final synthetic Lcom/sec/android/app/camera/executor/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;

.field public final synthetic b:Ln2/n;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;Ln2/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/i0;->a:Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;

    iput-object p2, p0, Lcom/sec/android/app/camera/executor/i0;->b:Ln2/n;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/executor/i0;->a:Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/i0;->b:Ln2/n;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->a(Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;Ln2/n;Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    return-void
.end method
