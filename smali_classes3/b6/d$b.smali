.class Lb6/d$b;
.super Ljava/lang/Object;
.source "SingleThreadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/d;->a(Lb6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb6/b;

.field final synthetic b:Lb6/d;


# direct methods
.method constructor <init>(Lb6/d;Lb6/b;)V
    .locals 0

    iput-object p1, p0, Lb6/d$b;->b:Lb6/d;

    iput-object p2, p0, Lb6/d$b;->a:Lb6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb6/d$b;->a:Lb6/b;

    invoke-interface {v0}, Lb6/b;->run()V

    .line 2
    iget-object p0, p0, Lb6/d$b;->a:Lb6/b;

    invoke-interface {p0}, Lb6/b;->onFinish()I

    return-void
.end method
