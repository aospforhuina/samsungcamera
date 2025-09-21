.class public final synthetic Lcom/airbnb/lottie/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/n$b;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/n;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/n;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/h;->a:Lcom/airbnb/lottie/n;

    iput p2, p0, Lcom/airbnb/lottie/h;->b:F

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/h;->a:Lcom/airbnb/lottie/n;

    iget p0, p0, Lcom/airbnb/lottie/h;->b:F

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/n;->e(Lcom/airbnb/lottie/n;FLh/h;)V

    return-void
.end method
