.class Lm3/w$a;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/w;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm3/w;


# direct methods
.method constructor <init>(Lm3/w;)V
    .locals 0

    iput-object p1, p0, Lm3/w$a;->a:Lm3/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lm3/w$a;->a:Lm3/w;

    invoke-static {v0}, Lm3/w;->D(Lm3/w;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object p0, p0, Lm3/w$a;->a:Lm3/w;

    invoke-static {p0}, Lm3/w;->C(Lm3/w;)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method
