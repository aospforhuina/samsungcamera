.class public Lo/m;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Lo/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ln/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln/m<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln/m<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/m;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo/m;->b:Ln/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/n;Lp/b;)Lj/c;
    .locals 1

    new-instance v0, Lj/q;

    invoke-direct {v0, p1, p2, p0}, Lj/q;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/m;)V

    return-object v0
.end method

.method public b()Ln/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln/m<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lo/m;->b:Ln/m;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/m;->a:Ljava/lang/String;

    return-object p0
.end method
