.class public final synthetic Lcom/airbnb/lottie/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/n$b;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/n;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/k;->a:Lcom/airbnb/lottie/n;

    iput p2, p0, Lcom/airbnb/lottie/k;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/k;->a:Lcom/airbnb/lottie/n;

    iget p0, p0, Lcom/airbnb/lottie/k;->b:I

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/n;->l(Lcom/airbnb/lottie/n;ILh/h;)V

    return-void
.end method
