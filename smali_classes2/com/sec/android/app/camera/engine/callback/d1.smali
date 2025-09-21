.class public final synthetic Lcom/sec/android/app/camera/engine/callback/d1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:[F


# direct methods
.method public synthetic constructor <init>(Z[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/callback/d1;->a:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/d1;->b:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/callback/d1;->a:Z

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/d1;->b:[F

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/callback/SmartScanEventCallback;->b(Z[FLcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;)V

    return-void
.end method
