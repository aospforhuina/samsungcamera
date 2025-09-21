.class public final synthetic Lh/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/o;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/w;->a:Lcom/airbnb/lottie/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lh/w;->a:Lcom/airbnb/lottie/o;

    invoke-static {p0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/o;)V

    return-void
.end method
