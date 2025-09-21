.class public final Lr5/a;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/a$a;
    }
.end annotation


# instance fields
.field final a:Lr5/a$a;

.field final b:I


# direct methods
.method public constructor <init>(Lr5/a$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr5/a;->a:Lr5/a$a;

    .line 3
    iput p2, p0, Lr5/a;->b:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr5/a;->a:Lr5/a$a;

    iget p0, p0, Lr5/a;->b:I

    invoke-interface {v0, p0, p1}, Lr5/a$a;->c(ILandroid/view/View;)V

    return-void
.end method
