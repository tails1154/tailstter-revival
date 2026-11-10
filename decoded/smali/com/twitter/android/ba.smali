.class final Lcom/twitter/android/ba;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final a:I

.field final b:Landroid/view/animation/Animation;

.field final c:Landroid/view/View;

.field final d:Landroid/view/View;

.field private e:Landroid/view/animation/Animation;

.field private synthetic f:Lcom/twitter/android/TweetListActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListActivity;Landroid/view/View;Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;I)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ba;->f:Lcom/twitter/android/TweetListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/ba;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/ba;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/twitter/android/ba;->b:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/twitter/android/ba;->e:Landroid/view/animation/Animation;

    iput p6, p0, Lcom/twitter/android/ba;->a:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ba;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/twitter/android/ba;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/ba;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ba;->f:Lcom/twitter/android/TweetListActivity;

    iget-object v0, v0, Lcom/twitter/android/TweetListActivity;->h:Lcom/twitter/android/client/i;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->d(I)I

    iget-object v0, p0, Lcom/twitter/android/ba;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/ba;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/ba;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ba;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
