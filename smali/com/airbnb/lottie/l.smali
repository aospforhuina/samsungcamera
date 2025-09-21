.class public final synthetic Lcom/airbnb/lottie/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/n$b;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/n;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/n;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/l;->a:Lcom/airbnb/lottie/n;

    iput p2, p0, Lcom/airbnb/lottie/l;->b:I

    iput p3, p0, Lcom/airbnb/lottie/l;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/l;->a:Lcom/airbnb/lottie/n;

    iget v1, p0, Lcom/airbnb/lottie/l;->b:I

    iget p0, p0, Lcom/airbnb/lottie/l;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/airbnb/lottie/n;->g(Lcom/airbnb/lottie/n;IILh/h;)V

    return-void
.end method
