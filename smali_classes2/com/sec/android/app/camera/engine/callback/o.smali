.class public final synthetic Lcom/sec/android/app/camera/engine/callback/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/o;->a:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/o;->a:[I

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CallbackManager$FoodEventListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/FoodEventCallback;->b([ILcom/sec/android/app/camera/interfaces/CallbackManager$FoodEventListener;)V

    return-void
.end method
