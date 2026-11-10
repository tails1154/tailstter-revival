.class public final Lcom/twitter/android/bv;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/ViewStub;

.field public b:Landroid/view/View;

.field public final c:Lcom/twitter/android/widget/TweetView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0e0007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/bv;->c:Lcom/twitter/android/widget/TweetView;

    const v0, 0x7f0e0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/twitter/android/bv;->a:Landroid/view/ViewStub;

    return-void
.end method
