.class public Lo/h;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/h$a;
    }
.end annotation


# instance fields
.field private final a:Lo/h$a;

.field private final b:Ln/h;

.field private final c:Ln/d;

.field private final d:Z


# direct methods
.method public constructor <init>(Lo/h$a;Ln/h;Ln/d;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/h;->a:Lo/h$a;

    .line 3
    iput-object p2, p0, Lo/h;->b:Ln/h;

    .line 4
    iput-object p3, p0, Lo/h;->c:Ln/d;

    .line 5
    iput-boolean p4, p0, Lo/h;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lo/h$a;
    .locals 0

    iget-object p0, p0, Lo/h;->a:Lo/h$a;

    return-object p0
.end method

.method public b()Ln/h;
    .locals 0

    iget-object p0, p0, Lo/h;->b:Ln/h;

    return-object p0
.end method

.method public c()Ln/d;
    .locals 0

    iget-object p0, p0, Lo/h;->c:Ln/d;

    return-object p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lo/h;->d:Z

    return p0
.end method
