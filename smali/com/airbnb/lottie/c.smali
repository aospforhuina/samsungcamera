.class public final synthetic Lcom/airbnb/lottie/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/n$b;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/n;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/n;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/c;->a:Lcom/airbnb/lottie/n;

    iput-object p2, p0, Lcom/airbnb/lottie/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lh/h;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/c;->a:Lcom/airbnb/lottie/n;

    iget-object p0, p0, Lcom/airbnb/lottie/c;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/airbnb/lottie/n;->m(Lcom/airbnb/lottie/n;Ljava/lang/String;Lh/h;)V

    return-void
.end method
