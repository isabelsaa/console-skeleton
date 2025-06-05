<?php

declare(strict_types=1);

namespace ConsoleSkeleton\UserInterface\Console;

use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Style\SymfonyStyle;

final class CreateUserCommand extends Command
{
    protected function configure(): void
    {
        $this->setName('app:create-user')
        ->setDescription('Creates a new user.')
        ->setHelp('This command allows you to create a user.');
    }

    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $io = new SymfonyStyle($input, $output);
        $io->success('User created!');
        return Command::SUCCESS;
    }
}