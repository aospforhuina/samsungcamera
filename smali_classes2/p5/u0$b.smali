.class Lp5/u0$b;
.super Ljava/lang/Object;
.source "CameraDialogConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp5/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Lp5/u0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lp5/u0$b;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lp5/u0$b;->b:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lp5/u0$b;->c:Lp5/u0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lp5/u0$b;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lp5/u0$b;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lp5/u0$b;->c:Lp5/u0$a;

    return-void
.end method


# virtual methods
.method a()Lp5/u0$a;
    .locals 0

    iget-object p0, p0, Lp5/u0$b;->c:Lp5/u0$a;

    return-object p0
.end method

.method b()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lp5/u0$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp5/u0$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method d(Lp5/u0$a;)V
    .locals 0

    iput-object p1, p0, Lp5/u0$b;->c:Lp5/u0$a;

    return-void
.end method
